.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 98
lea eax, qword ptr [rdx + rdx + 44]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test al, -104
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rdi + 41]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
btc ax, dx
jmp .bb_0.2
.bb_0.2:
test dil, dl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
