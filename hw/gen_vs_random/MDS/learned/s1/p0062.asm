.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or al, 16
test cl, dl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
test bl, -114
or al, 30
xor bl, -102
test rax, -1579405415
xor eax, 2063216578
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
