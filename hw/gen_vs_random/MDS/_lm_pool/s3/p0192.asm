.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, bx
xor dil, -5
btr bx, cx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
btc dx, 146
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
test al, -7
or al, al
or al, 37
and dl, cl
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
