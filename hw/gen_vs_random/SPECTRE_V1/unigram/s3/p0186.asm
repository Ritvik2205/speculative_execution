.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 43
add cl, 29 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 19
cwd
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 79
dec sil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 16
or al, dl
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 85
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
test rdi, 1238697264
and dil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 15
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
