.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
add al, 28 # instrumentation
setnz al
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
mov sil, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -26 # instrumentation
adc esi, ecx
add dl, -26 # instrumentation
adc edi, edx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
dec sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
