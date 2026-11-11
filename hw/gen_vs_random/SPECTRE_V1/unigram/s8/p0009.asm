.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sbb ebx, 85
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
adc cl, bl
sub bl, -6
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
btr rdi, rbx
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
