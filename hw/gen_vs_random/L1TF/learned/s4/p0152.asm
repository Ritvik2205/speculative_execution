.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
lea eax, qword ptr [rdi + rdi + 85]
lea esi, qword ptr [rcx + rcx + 12]
or ebx, eax
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sbb dil, dl
setb dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
xchg al, dl
cmp al, 27
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
