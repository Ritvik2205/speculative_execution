.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -18
xor ax, 24729
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
lea rbx, qword ptr [rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
btc rdx, 138
sub bl, 50
bt ax, cx
cmovnl ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test al, -59
bt rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
