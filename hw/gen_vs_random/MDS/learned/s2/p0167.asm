.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or bl, dl
and dl, bl
or ax, 30524
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
test al, 22
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or ax, 16560
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
xor sil, -15
or al, -61
and dl, -73
not dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
