.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 90
cmovb si, cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
btc eax, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
cmovnb rdx, rcx
cmovns eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 90
and edi, ecx
or cl, al
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
