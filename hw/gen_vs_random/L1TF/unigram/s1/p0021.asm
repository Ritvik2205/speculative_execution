.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, 92
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
sbb sil, 19
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 98
add dil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 44
setnl dl
xchg sil, sil
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor dx, 20
lea esi, qword ptr [rcx + rsi + 27]
cmovno eax, eax
adc cl, cl
cmovo ecx, eax
lea eax, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
