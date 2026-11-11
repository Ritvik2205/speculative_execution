.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
test bl, al
jmp .bb_0.1
.bb_0.1:
and rax, -731384280
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor al, 122
or al, 30
test eax, 1729060510
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
or ax, -7150
or bl, 127
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
