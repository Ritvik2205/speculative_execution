.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
bts dx, 76
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and esi, 90
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 58
cmp rdi, rbx
lea rdi, qword ptr [rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add edx, 56
cmovnle cx, cx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 14
or cl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
