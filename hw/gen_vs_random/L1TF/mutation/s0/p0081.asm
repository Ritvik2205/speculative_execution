.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and bl, dl
lea rdx, qword ptr [rdx + rax + 10045]
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
or dil, -28
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmp eax, 912798305
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
setp cl
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
btr ax, 185
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
