.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, al
cmp esi, 110
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmovo rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
setnb cl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test bl, 12
btr rcx, rdi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
cmp bl, cl
lea edx, qword ptr [rdx + rax + 29932]
adc dl, bl
xor dl, 9
sbb rax, 62
add dil, -7
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
