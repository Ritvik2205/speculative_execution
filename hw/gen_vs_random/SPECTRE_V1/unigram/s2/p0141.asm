.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
lea eax, qword ptr [rax + rcx + 91]
cmovz bx, bx
movsx edx, al
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
xchg rbx, rdx
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 79
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
cmovp bx, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
sub bl, -6
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edi
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
