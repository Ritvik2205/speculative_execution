.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, ebx
add eax, 109
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
add dl, -108 # instrumentation
cmovnle esi, esi
lea cx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 32
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
bt rdi, rdi
add dl, 70 # instrumentation
sbb cl, 100
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
btr eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
