.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edi
add dl, 47
lea edx, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 44
and si, 76
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 84
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
lea dx, qword ptr [rbx + rbx + 44]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
setnl al
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
