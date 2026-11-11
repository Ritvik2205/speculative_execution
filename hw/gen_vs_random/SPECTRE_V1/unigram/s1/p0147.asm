.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
movzx dx, al
add cl, -36
add dl, dil
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
add cl, 29 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 30
sub rcx, 45
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
cmovnbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
add cl, al
and dl, bl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 13
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
