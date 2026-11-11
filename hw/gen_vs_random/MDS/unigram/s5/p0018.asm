.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
or al, 74
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and cl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, -636362975
bts ax, 22
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
bts rbx, rdx
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
