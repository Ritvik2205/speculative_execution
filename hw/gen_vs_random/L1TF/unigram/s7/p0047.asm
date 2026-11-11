.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
adc sil, 61
sbb esi, esi
jmp .bb_0.1
.bb_0.1:
test rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
mov dil, al
and al, dil
lea eax, qword ptr [rax + rdx + 19]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 78
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 17
cmp rcx, 16
xchg eax, edi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
