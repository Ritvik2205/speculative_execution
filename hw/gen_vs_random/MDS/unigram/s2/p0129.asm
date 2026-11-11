.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
test bl, -9
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
cmovs edi, edi
xor al, dil
cmovo ebx, esi
or dl, 85
or rbx, -77
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and al, 17 # instrumentation
cmovnp ecx, esi
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
cmovno rbx, rsi
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and bl, 68
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
