.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, edi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
xor si, 91
not sil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdi
bt ecx, 27
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
cmovno ax, di
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
btr dx, 47
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
cmovz rcx, rbx
and dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovs si, si
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
