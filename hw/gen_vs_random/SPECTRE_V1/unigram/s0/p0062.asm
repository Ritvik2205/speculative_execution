.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sub cl, bl
adc bl, dil
lea rbx, qword ptr [rdx + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
mov dil, al
or bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setz cl
cmp al, dl
add al, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
btc esi, esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
