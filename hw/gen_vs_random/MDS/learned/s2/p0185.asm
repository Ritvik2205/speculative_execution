.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor al, sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 90
or dl, -31
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
not al
and esi, 89
jmp .bb_0.1
.bb_0.1:
and dil, -62
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and eax, -85386306
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
xor dil, 8
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
