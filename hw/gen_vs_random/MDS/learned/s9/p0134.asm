.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor sil, -15
btc rbx, 118
jmp .bb_0.1
.bb_0.1:
or al, -22
or al, bl
and al, dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
xor rsi, -117
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
or al, 37
or sil, -78
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
