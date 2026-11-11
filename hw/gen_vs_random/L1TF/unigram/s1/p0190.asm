.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
sub al, -3
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
cmovl bx, si
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
cmovo rdi, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
setno dil
and al, bl
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
bts eax, 232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
