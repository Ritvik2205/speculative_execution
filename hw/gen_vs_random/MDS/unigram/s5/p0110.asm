.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
or dil, 12
test eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and dl, -73
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
test ax, -20900
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
or al, 24
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
test al, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
xor al, dl
cmovs rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
