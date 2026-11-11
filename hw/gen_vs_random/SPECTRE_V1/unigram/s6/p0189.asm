.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
cmovle ecx, edi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
add al, 10
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 78
add cx, -103
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
add dil, -75
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dl
bswap ecx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
movsx eax, ax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 82
lea ecx, qword ptr [rsi + rsi + 81]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
