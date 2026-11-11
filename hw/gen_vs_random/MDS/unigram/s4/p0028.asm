.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
btr ebx, ebx
btc esi, 199
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
xor al, -4
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 50
and al, -55
xor dil, 8
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test si, dx
cmovnle rbx, rsi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovo rax, rbx
xor bx, 84
test edi, eax
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
and rax, -1931765367
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
