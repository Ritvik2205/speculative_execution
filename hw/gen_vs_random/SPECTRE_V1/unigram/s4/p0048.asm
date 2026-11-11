.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
setno dil
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
add sil, -123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
lea di, qword ptr [rdx + rdi]
lea rcx, qword ptr [rax + rdi + 64855]
sub rcx, 62
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
