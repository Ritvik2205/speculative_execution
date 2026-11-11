.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmp al, -119
add bl, dil
lea cx, qword ptr [rdx]
bt edi, ebx
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
