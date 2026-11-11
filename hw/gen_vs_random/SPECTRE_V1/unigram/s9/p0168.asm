.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 69 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], cx
add al, 110 # instrumentation
movzx di, al
movzx ecx, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
mov rdx, 3609511260715352814
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
cmovns rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
