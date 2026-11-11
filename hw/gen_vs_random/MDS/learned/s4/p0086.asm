.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test al, sil
or dl, -8
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
xor al, 34
and al, -103
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor bl, -27
and cl, cl
xor al, 34
test rdi, 62
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
