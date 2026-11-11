.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
add sil, -46 # instrumentation
cmovbe rsi, rcx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
cmp al, sil
add sil, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
inc edx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 71
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
lea bx, qword ptr [rcx + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
add dl, -121 # instrumentation
setno dl
adc dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
