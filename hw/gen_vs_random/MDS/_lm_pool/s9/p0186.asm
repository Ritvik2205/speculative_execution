.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor sil, -14
xor dil, cl
or al, 74
bts rbx, rax
xor ax, -6793
or dl, -89
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
or al, -22
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
