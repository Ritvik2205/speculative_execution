.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
add al, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
sbb sil, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
sub sil, -99
sbb rax, 62
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
mov cl, 20
jmp .bb_0.1
.bb_0.1:
and rcx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
xor bl, 38
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
test bl, 12
add al, 65 # instrumentation
cmovo rax, rsi
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
