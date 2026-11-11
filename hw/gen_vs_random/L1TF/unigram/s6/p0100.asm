.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, -33
test bx, si
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
lea cx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
add al, -87 # instrumentation
cmovnle rbx, rax
btc si, dx
add dil, al
or dl, dil
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
imul cx, bx, 8
lea eax, qword ptr [rdx + rax + 51706]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
