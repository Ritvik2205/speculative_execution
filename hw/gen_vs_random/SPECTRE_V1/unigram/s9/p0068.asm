.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, -614
test rbx, 83
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
bts dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
add ax, 23362
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
or dl, 41
add al, 110 # instrumentation
cmovb rcx, rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
adc dl, -49
neg edx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
cmp rbx, 76
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
