.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
cmovb dx, dx
and al, 21 # instrumentation
cmovb si, ax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
btr rdi, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
and di, 91
bt bx, 253
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and cl, -128 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
