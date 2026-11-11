.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, ax
and al, al
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and al, -114
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or rax, -689609688
btr si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
