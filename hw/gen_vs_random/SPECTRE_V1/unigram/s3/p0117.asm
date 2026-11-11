.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
add dil, 118 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
adc dx, cx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
add dil, -101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
movsx esi, al
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 60
setnb cl
xor esi, edi
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
