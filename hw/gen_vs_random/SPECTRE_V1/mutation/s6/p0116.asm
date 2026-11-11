.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
dec dil
inc rcx
sub bx, cx
or bx, 9
test al, 42
lea rsi, qword ptr [rdi + rax + 49498]
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdi
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
cmovbe di, dx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and bl, dl
btc rsi, rax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
movsx rsi, dx
jmp .bb_0.2
.bb_0.2:
mul si
sub cl, al
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 90
setnp cl
add dl, bl
bts di, bx
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
sets dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
