.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -37 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
add al, -122 # instrumentation
cmovnbe edx, edx
or cl, dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
lea ax, qword ptr [rcx]
mul al
or ax, 11821
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 50
sub ecx, ecx
lea bx, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 87
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
