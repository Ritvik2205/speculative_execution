.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 62
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
test bl, dil
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
cmovle ax, dx
sbb sil, -78
lea si, qword ptr [rdx + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
lea dx, qword ptr [rsi + rcx]
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
