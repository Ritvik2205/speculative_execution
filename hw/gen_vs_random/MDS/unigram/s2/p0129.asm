.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, 50
or bl, 73
xor rcx, 35
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 93
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and al, -56 # instrumentation
cmovl rsi, rbx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
cmovb rdi, rsi
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
cmovnle edx, edi
jmp .bb_0.1
.bb_0.1:
cmovns cx, si
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor dil, 9
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 60
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
test eax, 758789512
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
