.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
inc eax
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
setno dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
cmp cl, al
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
