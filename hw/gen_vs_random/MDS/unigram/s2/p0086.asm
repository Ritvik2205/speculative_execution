.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
or rdx, rsi
and al, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
cmovnb rcx, rax
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmovns ax, di
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 9
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
xor al, 34
or al, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
bt dx, cx
and ebx, ebx
btr cx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
