.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edi
and dx, di
or cl, bl
or rax, rcx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and bl, -3 # instrumentation
cmovnb bx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 62
xor sil, 2
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and ax, -30938
and al, bl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 81
bt rsi, rbx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
bts rsi, 89
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and cl, -38 # instrumentation
cmovp rcx, rbx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
