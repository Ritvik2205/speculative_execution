.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
sbb bl, cl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
or bl, 61
and rcx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
lea di, qword ptr [rdx + rcx]
sbb ecx, 71
inc bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
