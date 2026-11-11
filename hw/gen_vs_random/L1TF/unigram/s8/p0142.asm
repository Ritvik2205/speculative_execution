.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
setb cl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmovns rax, rsi
or edx, ebx
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 72
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor rbx, 99
setno sil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
