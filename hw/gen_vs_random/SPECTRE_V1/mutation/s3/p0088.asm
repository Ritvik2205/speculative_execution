.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
not ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -95 # instrumentation
lea bx, qword ptr [rdx + rdx + 34528]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
or rcx, rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add rax, 977059290
inc esi
xor dl, al
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdx + rdi + 22131]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
mov dl, cl
and dil, dil
cmovs cx, dx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
