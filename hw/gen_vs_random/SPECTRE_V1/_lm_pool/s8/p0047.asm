.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, bx
setnb cl
add dl, 47
imul dl
lea rax, qword ptr [rbx]
lea bx, qword ptr [rdi]
xor bl, dl
and dl, -109
xor rdx, rax
and al, 33
lea dx, qword ptr [rsi + rcx]
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
