.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo esi, esi
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
adc rcx, 45
mul rdi
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
sbb dl, -23
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
