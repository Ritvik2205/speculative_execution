.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ax, di
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
btc rsi, rcx
bts rbx, rcx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and dil, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 9
jmp .bb_0.1
.bb_0.1:
xor dl, -43
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or cx, -42
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
test rsi, rbx
cmovnp rbx, rbx
xor al, dl
and bl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and dl, -127 # instrumentation
cmovno ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
