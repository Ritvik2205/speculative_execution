.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rdx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
lea rcx, qword ptr [rsi + rax + 90]
cmovnb ebx, esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 18
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
lea eax, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
imul al
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
lea rbx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
