.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
imul edx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
lea ax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
lea ecx, qword ptr [rax + rax + 33]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 96
add dl, -108 # instrumentation
cmovnle edi, edi
cmovl di, bx
add al, 48 # instrumentation
cmovnz edx, edx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
