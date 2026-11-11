.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno sil
lea edi, qword ptr [rdi + rbx + 5]
or al, bl
lea esi, qword ptr [rcx + rdi]
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
lea rdx, qword ptr [rdi + rcx + 36]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
sets al
mul esi
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
cmp edx, 99
lea rdx, qword ptr [rsi + rax]
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
