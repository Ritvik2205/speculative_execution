.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
movzx cx, al
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
test ecx, ebx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 100
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
