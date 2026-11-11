.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
lea esi, qword ptr [rax + rax + 21]
test al, sil
and bl, dl
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bt eax, ebx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
lea rsi, qword ptr [rcx]
add dl, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
