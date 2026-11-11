.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
setnl cl
and ebx, 108
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
btc si, cx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 70
or cl, -78
or dil, -113
cbw
xchg eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmovnle rdi, rdi
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xor rax, -2072052278
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
