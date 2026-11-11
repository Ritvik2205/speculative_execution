.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
mov al, bl
and al, dl
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 34
add bl, bl
imul bx, dx, 72
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
or dl, sil
mov rsi, 71
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
