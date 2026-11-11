.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
bts edi, 248
cmovnz rdx, rcx
or ebx, -15
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
or si, si
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
jmp .bb_0.1
.bb_0.1:
bt di, 52
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
and dl, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
cmovnbe edi, esi
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
xor rcx, -2
xor sil, dil
and bl, 34 # instrumentation
cmovno ebx, edx
and rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
